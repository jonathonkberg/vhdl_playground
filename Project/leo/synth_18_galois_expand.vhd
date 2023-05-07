
-- 
-- Definition of  galois_expand
-- 
--      Thu May  4 21:52:18 2023
--      
--      LeonardoSpectrum Level 3, 2011a.4
-- 

library ieee, adk; use ieee.std_logic_1164.all, use ieee.std_logic_signed.all, adk.adk_components.all;

entity galois_expand is
   port (
      clk : IN std_logic ;
      packet_input : IN std_logic_vector (7 DOWNTO 0) ;
      random_num_input : IN std_logic_vector (7 DOWNTO 0) ;
      mult_out : OUT std_logic_vector (14 DOWNTO 0) ;
      complete : OUT std_logic) ;
end galois_expand ;

architecture galois_expand_fsm of galois_expand is
   signal complete_EXMPLR, nx2453, row_0_0, reset_rows, ready_1, nx16, nx24, 
      nx26, row_0_1, nx36, row_1_1, nx44, nx54, row_0_2, nx64, row_1_2, nx72, 
      row_2_2, nx82, nx90, nx92, row_0_3, nx102, row_1_3, nx110, row_2_3, 
      nx120, nx128, row_3_3, nx130, nx140, row_4_4, nx148, row_0_4, nx158, 
      row_1_4, nx166, row_2_4, nx176, row_3_4, nx184, nx196, nx198, row_0_5, 
      nx208, row_1_5, nx216, row_2_5, nx226, row_3_5, nx234, row_4_5, nx246, 
      row_5_5, nx254, nx266, row_0_6, nx276, row_1_6, nx284, row_2_6, nx294, 
      row_3_6, nx302, row_6_6, nx314, row_4_6, nx322, row_5_6, nx330, nx340, 
      nx342, nx344, row_0_7, nx354, row_1_7, nx362, row_2_7, nx372, row_3_7, 
      nx380, row_4_7, nx392, row_5_7, nx400, row_6_7, nx410, row_7_7, nx418, 
      nx432, row_1_8, nx440, row_2_8, nx448, row_3_8, nx458, row_4_8, nx466, 
      row_7_8, nx478, row_5_8, nx486, row_6_8, nx494, nx504, nx506, nx508, 
      row_2_9, nx516, row_3_9, nx524, row_4_9, nx534, row_5_9, nx542, 
      row_6_9, nx554, row_7_9, nx562, nx574, row_7_10, nx582, row_3_10, 
      nx590, row_4_10, nx598, row_5_10, nx608, row_6_10, nx616, nx628, nx630, 
      row_4_11, nx638, row_5_11, nx646, row_6_11, nx656, nx664, row_7_11, 
      nx666, nx676, row_5_12, nx684, row_6_12, nx692, row_7_12, nx702, nx710, 
      nx712, row_6_13, nx720, row_7_13, nx728, nx738, row_7_14, nx746, nx754, 
      nx2506, nx2511, nx2515, nx2524, nx2528, nx2538, nx2541, nx2545, nx2562, 
      nx2564, nx2568, nx2572, nx2580, nx2582, nx2584, nx2588, nx2592, nx2598, 
      nx2609, nx2611, nx2615, nx2619, nx2630, nx2638, nx2640, nx2642, nx2646, 
      nx2650, nx2656, nx2658, nx2664, nx2675, nx2677, nx2683, nx2692, nx2700, 
      nx2702, nx2704, nx2710, nx2716, nx2727, nx2729, nx2735, nx2743, nx2746, 
      nx2759, nx2769, nx2784, nx2786, nx2788, nx2790, nx2792, nx2794, nx2796, 
      nx2798, nx2800, nx2802, nx2804, nx2806, nx2808, nx2810, nx2814, nx2816, 
      nx2818, nx2820, nx2822, nx2826, nx2830, nx2832, nx2836, nx2840, nx2846, 
      nx2848, nx2852, nx2856, nx2860, nx2862, nx2864, nx5, nx2870, nx2872, 
      nx2874, nx2876: std_logic ;

begin
   complete <= complete_EXMPLR ;
   ix2454 : fake_gnd port map ( Y=>nx2453);
   lat_mult_out_0 : latch port map ( Q=>mult_out(0), D=>nx24, CLK=>nx2814);
   lat_row_0_0 : latch port map ( Q=>row_0_0, D=>nx16, CLK=>nx2860);
   ix2507 : nand02 port map ( Y=>nx2506, A0=>packet_input(0), A1=>nx2860);
   lat_mult_out_1 : latch port map ( Q=>mult_out(1), D=>nx54, CLK=>nx2814);
   ix2512 : xnor2 port map ( Y=>nx2511, A0=>row_0_1, A1=>row_1_1);
   lat_row_0_1 : latch port map ( Q=>row_0_1, D=>nx36, CLK=>nx2786);
   ix2516 : nand02 port map ( Y=>nx2515, A0=>packet_input(1), A1=>nx2860);
   lat_row_1_1 : latch port map ( Q=>row_1_1, D=>nx44, CLK=>nx2786);
   lat_mult_out_2 : latch port map ( Q=>mult_out(2), D=>nx92, CLK=>nx2814);
   ix91 : xnor2 port map ( Y=>nx90, A0=>nx2524, A1=>row_2_2);
   ix2525 : xnor2 port map ( Y=>nx2524, A0=>row_0_2, A1=>row_1_2);
   lat_row_0_2 : latch port map ( Q=>row_0_2, D=>nx64, CLK=>nx2786);
   ix2529 : nand02 port map ( Y=>nx2528, A0=>packet_input(2), A1=>nx2786);
   lat_row_1_2 : latch port map ( Q=>row_1_2, D=>nx72, CLK=>nx2786);
   lat_row_2_2 : latch port map ( Q=>row_2_2, D=>nx82, CLK=>nx2786);
   lat_mult_out_3 : latch port map ( Q=>mult_out(3), D=>nx140, CLK=>nx2814);
   ix2539 : xnor2 port map ( Y=>nx2538, A0=>nx128, A1=>row_3_3);
   ix129 : xnor2 port map ( Y=>nx128, A0=>nx2541, A1=>row_2_3);
   ix2542 : xnor2 port map ( Y=>nx2541, A0=>row_0_3, A1=>row_1_3);
   lat_row_0_3 : latch port map ( Q=>row_0_3, D=>nx102, CLK=>nx2788);
   ix2546 : nand02 port map ( Y=>nx2545, A0=>packet_input(3), A1=>nx2788);
   lat_row_1_3 : latch port map ( Q=>row_1_3, D=>nx110, CLK=>nx2788);
   lat_row_2_3 : latch port map ( Q=>row_2_3, D=>nx120, CLK=>nx2788);
   lat_row_3_3 : latch port map ( Q=>row_3_3, D=>nx130, CLK=>nx2788);
   lat_mult_out_4 : latch port map ( Q=>mult_out(4), D=>nx198, CLK=>nx2814);
   ix197 : xnor2 port map ( Y=>nx196, A0=>row_4_4, A1=>nx2562);
   lat_row_4_4 : latch port map ( Q=>row_4_4, D=>nx148, CLK=>nx2788);
   ix2563 : xnor2 port map ( Y=>nx2562, A0=>nx2564, A1=>nx2572);
   ix2565 : xnor2 port map ( Y=>nx2564, A0=>row_0_4, A1=>row_1_4);
   lat_row_0_4 : latch port map ( Q=>row_0_4, D=>nx158, CLK=>nx2862);
   ix2569 : nand02 port map ( Y=>nx2568, A0=>packet_input(4), A1=>nx2862);
   lat_row_1_4 : latch port map ( Q=>row_1_4, D=>nx166, CLK=>nx2862);
   ix2573 : xnor2 port map ( Y=>nx2572, A0=>row_2_4, A1=>row_3_4);
   lat_row_2_4 : latch port map ( Q=>row_2_4, D=>nx176, CLK=>nx2862);
   lat_row_3_4 : latch port map ( Q=>row_3_4, D=>nx184, CLK=>nx2862);
   lat_mult_out_5 : latch port map ( Q=>mult_out(5), D=>nx266, CLK=>nx2814);
   ix2581 : xnor2 port map ( Y=>nx2580, A0=>nx2582, A1=>nx2598);
   ix2583 : xnor2 port map ( Y=>nx2582, A0=>nx2584, A1=>nx2592);
   ix2585 : xnor2 port map ( Y=>nx2584, A0=>row_0_5, A1=>row_1_5);
   lat_row_0_5 : latch port map ( Q=>row_0_5, D=>nx208, CLK=>nx2792);
   ix2589 : nand02 port map ( Y=>nx2588, A0=>packet_input(5), A1=>nx2862);
   lat_row_1_5 : latch port map ( Q=>row_1_5, D=>nx216, CLK=>nx2792);
   ix2593 : xnor2 port map ( Y=>nx2592, A0=>row_2_5, A1=>row_3_5);
   lat_row_2_5 : latch port map ( Q=>row_2_5, D=>nx226, CLK=>nx2792);
   lat_row_3_5 : latch port map ( Q=>row_3_5, D=>nx234, CLK=>nx2792);
   ix2599 : xnor2 port map ( Y=>nx2598, A0=>row_4_5, A1=>row_5_5);
   lat_row_4_5 : latch port map ( Q=>row_4_5, D=>nx246, CLK=>nx2792);
   lat_row_5_5 : latch port map ( Q=>row_5_5, D=>nx254, CLK=>nx2792);
   lat_mult_out_6 : latch port map ( Q=>mult_out(6), D=>nx344, CLK=>nx2816);
   ix343 : xnor2 port map ( Y=>nx342, A0=>nx2609, A1=>nx340);
   ix2610 : xnor2 port map ( Y=>nx2609, A0=>nx2611, A1=>nx2619);
   ix2612 : xnor2 port map ( Y=>nx2611, A0=>row_0_6, A1=>row_1_6);
   lat_row_0_6 : latch port map ( Q=>row_0_6, D=>nx276, CLK=>nx2794);
   ix2616 : nand02 port map ( Y=>nx2615, A0=>packet_input(6), A1=>nx2794);
   lat_row_1_6 : latch port map ( Q=>row_1_6, D=>nx284, CLK=>nx2794);
   ix2620 : xnor2 port map ( Y=>nx2619, A0=>row_2_6, A1=>row_3_6);
   lat_row_2_6 : latch port map ( Q=>row_2_6, D=>nx294, CLK=>nx2794);
   lat_row_3_6 : latch port map ( Q=>row_3_6, D=>nx302, CLK=>nx2794);
   ix341 : xnor2 port map ( Y=>nx340, A0=>row_6_6, A1=>nx2630);
   lat_row_6_6 : latch port map ( Q=>row_6_6, D=>nx314, CLK=>nx2794);
   ix2631 : xnor2 port map ( Y=>nx2630, A0=>row_4_6, A1=>row_5_6);
   lat_row_4_6 : latch port map ( Q=>row_4_6, D=>nx322, CLK=>nx2796);
   lat_row_5_6 : latch port map ( Q=>row_5_6, D=>nx330, CLK=>nx2796);
   lat_mult_out_7 : latch port map ( Q=>mult_out(7), D=>nx432, CLK=>nx2816);
   ix2639 : xnor2 port map ( Y=>nx2638, A0=>nx2640, A1=>nx2656);
   ix2641 : xnor2 port map ( Y=>nx2640, A0=>nx2642, A1=>nx2650);
   ix2643 : xnor2 port map ( Y=>nx2642, A0=>row_0_7, A1=>row_1_7);
   lat_row_0_7 : latch port map ( Q=>row_0_7, D=>nx354, CLK=>nx2796);
   ix2647 : nand02 port map ( Y=>nx2646, A0=>packet_input(7), A1=>nx2796);
   lat_row_1_7 : latch port map ( Q=>row_1_7, D=>nx362, CLK=>nx2796);
   ix2651 : xnor2 port map ( Y=>nx2650, A0=>row_2_7, A1=>row_3_7);
   lat_row_2_7 : latch port map ( Q=>row_2_7, D=>nx372, CLK=>nx2796);
   lat_row_3_7 : latch port map ( Q=>row_3_7, D=>nx380, CLK=>nx2798);
   ix2657 : xnor2 port map ( Y=>nx2656, A0=>nx2658, A1=>nx2664);
   ix2659 : xnor2 port map ( Y=>nx2658, A0=>row_4_7, A1=>row_5_7);
   lat_row_4_7 : latch port map ( Q=>row_4_7, D=>nx392, CLK=>nx2798);
   lat_row_5_7 : latch port map ( Q=>row_5_7, D=>nx400, CLK=>nx2798);
   ix2665 : xnor2 port map ( Y=>nx2664, A0=>row_6_7, A1=>row_7_7);
   lat_row_6_7 : latch port map ( Q=>row_6_7, D=>nx410, CLK=>nx2798);
   lat_row_7_7 : latch port map ( Q=>row_7_7, D=>nx418, CLK=>nx2798);
   lat_mult_out_8 : latch port map ( Q=>mult_out(8), D=>nx508, CLK=>nx2816);
   ix507 : xnor2 port map ( Y=>nx506, A0=>nx2675, A1=>nx504);
   ix2676 : xnor2 port map ( Y=>nx2675, A0=>nx2677, A1=>nx2683);
   ix2678 : xnor2 port map ( Y=>nx2677, A0=>row_1_8, A1=>row_2_8);
   lat_row_1_8 : latch port map ( Q=>row_1_8, D=>nx440, CLK=>nx2798);
   lat_row_2_8 : latch port map ( Q=>row_2_8, D=>nx448, CLK=>nx2800);
   ix2684 : xnor2 port map ( Y=>nx2683, A0=>row_3_8, A1=>row_4_8);
   lat_row_3_8 : latch port map ( Q=>row_3_8, D=>nx458, CLK=>nx2800);
   lat_row_4_8 : latch port map ( Q=>row_4_8, D=>nx466, CLK=>nx2800);
   ix505 : xnor2 port map ( Y=>nx504, A0=>row_7_8, A1=>nx2692);
   lat_row_7_8 : latch port map ( Q=>row_7_8, D=>nx478, CLK=>nx2800);
   ix2693 : xnor2 port map ( Y=>nx2692, A0=>row_5_8, A1=>row_6_8);
   lat_row_5_8 : latch port map ( Q=>row_5_8, D=>nx486, CLK=>nx2800);
   lat_row_6_8 : latch port map ( Q=>row_6_8, D=>nx494, CLK=>nx2800);
   lat_mult_out_9 : latch port map ( Q=>mult_out(9), D=>nx574, CLK=>nx2816);
   ix2701 : xnor2 port map ( Y=>nx2700, A0=>nx2702, A1=>nx2716);
   ix2703 : xnor2 port map ( Y=>nx2702, A0=>nx2704, A1=>nx2710);
   ix2705 : xnor2 port map ( Y=>nx2704, A0=>row_2_9, A1=>row_3_9);
   lat_row_2_9 : latch port map ( Q=>row_2_9, D=>nx516, CLK=>nx2802);
   lat_row_3_9 : latch port map ( Q=>row_3_9, D=>nx524, CLK=>nx2802);
   ix2711 : xnor2 port map ( Y=>nx2710, A0=>row_4_9, A1=>row_5_9);
   lat_row_4_9 : latch port map ( Q=>row_4_9, D=>nx534, CLK=>nx2802);
   lat_row_5_9 : latch port map ( Q=>row_5_9, D=>nx542, CLK=>nx2802);
   ix2717 : xnor2 port map ( Y=>nx2716, A0=>row_6_9, A1=>row_7_9);
   lat_row_6_9 : latch port map ( Q=>row_6_9, D=>nx554, CLK=>nx2802);
   lat_row_7_9 : latch port map ( Q=>row_7_9, D=>nx562, CLK=>nx2802);
   lat_mult_out_10 : latch port map ( Q=>mult_out(10), D=>nx630, CLK=>nx2816
   );
   ix629 : xnor2 port map ( Y=>nx628, A0=>row_7_10, A1=>nx2727);
   lat_row_7_10 : latch port map ( Q=>row_7_10, D=>nx582, CLK=>nx2804);
   ix2728 : xnor2 port map ( Y=>nx2727, A0=>nx2729, A1=>nx2735);
   ix2730 : xnor2 port map ( Y=>nx2729, A0=>row_3_10, A1=>row_4_10);
   lat_row_3_10 : latch port map ( Q=>row_3_10, D=>nx590, CLK=>nx2804);
   lat_row_4_10 : latch port map ( Q=>row_4_10, D=>nx598, CLK=>nx2804);
   ix2736 : xnor2 port map ( Y=>nx2735, A0=>row_5_10, A1=>row_6_10);
   lat_row_5_10 : latch port map ( Q=>row_5_10, D=>nx608, CLK=>nx2804);
   lat_row_6_10 : latch port map ( Q=>row_6_10, D=>nx616, CLK=>nx2804);
   lat_mult_out_11 : latch port map ( Q=>mult_out(11), D=>nx676, CLK=>nx2816
   );
   ix2744 : xnor2 port map ( Y=>nx2743, A0=>nx664, A1=>row_7_11);
   ix665 : xnor2 port map ( Y=>nx664, A0=>nx2746, A1=>row_6_11);
   ix2747 : xnor2 port map ( Y=>nx2746, A0=>row_4_11, A1=>row_5_11);
   lat_row_4_11 : latch port map ( Q=>row_4_11, D=>nx638, CLK=>nx2804);
   lat_row_5_11 : latch port map ( Q=>row_5_11, D=>nx646, CLK=>nx2806);
   lat_row_6_11 : latch port map ( Q=>row_6_11, D=>nx656, CLK=>nx2806);
   lat_row_7_11 : latch port map ( Q=>row_7_11, D=>nx666, CLK=>nx2806);
   lat_mult_out_12 : latch port map ( Q=>mult_out(12), D=>nx712, CLK=>nx26);
   ix711 : xnor2 port map ( Y=>nx710, A0=>nx2759, A1=>row_7_12);
   ix2760 : xnor2 port map ( Y=>nx2759, A0=>row_5_12, A1=>row_6_12);
   lat_row_5_12 : latch port map ( Q=>row_5_12, D=>nx684, CLK=>nx2806);
   lat_row_6_12 : latch port map ( Q=>row_6_12, D=>nx692, CLK=>nx2806);
   lat_row_7_12 : latch port map ( Q=>row_7_12, D=>nx702, CLK=>nx2806);
   lat_mult_out_13 : latch port map ( Q=>mult_out(13), D=>nx738, CLK=>nx26);
   ix2770 : xnor2 port map ( Y=>nx2769, A0=>row_6_13, A1=>row_7_13);
   lat_row_6_13 : latch port map ( Q=>row_6_13, D=>nx720, CLK=>nx2808);
   lat_row_7_13 : latch port map ( Q=>row_7_13, D=>nx728, CLK=>nx2808);
   lat_mult_out_14 : latch port map ( Q=>mult_out(14), D=>nx754, CLK=>nx26);
   lat_row_7_14 : latch port map ( Q=>row_7_14, D=>nx746, CLK=>nx2808);
   ix2783 : inv01 port map ( Y=>nx2784, A=>nx2864);
   ix2785 : inv01 port map ( Y=>nx2786, A=>nx2864);
   ix2787 : inv01 port map ( Y=>nx2788, A=>nx2864);
   ix2789 : inv01 port map ( Y=>nx2790, A=>nx2864);
   ix2791 : inv01 port map ( Y=>nx2792, A=>nx2864);
   ix2793 : inv01 port map ( Y=>nx2794, A=>nx2820);
   ix2795 : inv01 port map ( Y=>nx2796, A=>nx2820);
   ix2797 : inv01 port map ( Y=>nx2798, A=>nx2820);
   ix2799 : inv01 port map ( Y=>nx2800, A=>nx2820);
   ix2801 : inv01 port map ( Y=>nx2802, A=>nx2820);
   ix2803 : inv01 port map ( Y=>nx2804, A=>nx2820);
   ix2805 : inv01 port map ( Y=>nx2806, A=>nx2822);
   ix2807 : inv01 port map ( Y=>nx2808, A=>nx2822);
   ix2809 : inv01 port map ( Y=>nx2810, A=>nx2876);
   ix2817 : inv01 port map ( Y=>nx2818, A=>reset_rows);
   ix2819 : inv01 port map ( Y=>nx2820, A=>reset_rows);
   ix2821 : inv01 port map ( Y=>nx2822, A=>reset_rows);
   ix2825 : inv01 port map ( Y=>nx2826, A=>nx2874);
   ix2829 : nand02 port map ( Y=>nx2830, A0=>packet_input(0), A1=>nx2784);
   ix2831 : nand02 port map ( Y=>nx2832, A0=>packet_input(1), A1=>nx2784);
   ix2835 : nand02 port map ( Y=>nx2836, A0=>packet_input(2), A1=>nx2786);
   ix2839 : nand02 port map ( Y=>nx2840, A0=>packet_input(3), A1=>nx2788);
   ix2845 : nand02 port map ( Y=>nx2846, A0=>packet_input(4), A1=>nx2790);
   ix2847 : nand02 port map ( Y=>nx2848, A0=>packet_input(5), A1=>nx2790);
   ix2851 : nand02 port map ( Y=>nx2852, A0=>packet_input(6), A1=>nx2794);
   ix2855 : nand02 port map ( Y=>nx2856, A0=>packet_input(7), A1=>nx2796);
   ix2859 : inv01 port map ( Y=>nx2860, A=>nx2818);
   ix2861 : inv01 port map ( Y=>nx2862, A=>nx2818);
   ix2863 : inv01 port map ( Y=>nx2864, A=>reset_rows);
   ix25 : nor02ii port map ( Y=>nx24, A0=>nx2876, A1=>row_0_0);
   ix17 : nor02ii port map ( Y=>nx16, A0=>nx2830, A1=>random_num_input(0));
   ix27 : or02 port map ( Y=>nx26, A0=>reset_rows, A1=>nx2874);
   ix55 : nor02ii port map ( Y=>nx54, A0=>nx2511, A1=>nx2874);
   ix37 : nor02ii port map ( Y=>nx36, A0=>nx2832, A1=>random_num_input(0));
   ix45 : nor02ii port map ( Y=>nx44, A0=>nx2830, A1=>random_num_input(1));
   ix93 : nor02ii port map ( Y=>nx92, A0=>nx2876, A1=>nx90);
   ix65 : nor02ii port map ( Y=>nx64, A0=>nx2836, A1=>random_num_input(0));
   ix73 : nor02ii port map ( Y=>nx72, A0=>nx2832, A1=>random_num_input(1));
   ix83 : nor02ii port map ( Y=>nx82, A0=>nx2830, A1=>random_num_input(2));
   ix141 : nor02ii port map ( Y=>nx140, A0=>nx2538, A1=>nx2874);
   ix103 : nor02ii port map ( Y=>nx102, A0=>nx2840, A1=>random_num_input(0)
   );
   ix111 : nor02ii port map ( Y=>nx110, A0=>nx2836, A1=>random_num_input(1)
   );
   ix121 : nor02ii port map ( Y=>nx120, A0=>nx2832, A1=>random_num_input(2)
   );
   ix131 : nor02ii port map ( Y=>nx130, A0=>nx2830, A1=>random_num_input(3)
   );
   ix199 : nor02ii port map ( Y=>nx198, A0=>nx2876, A1=>nx196);
   ix149 : nor02ii port map ( Y=>nx148, A0=>nx2830, A1=>random_num_input(4)
   );
   ix159 : nor02ii port map ( Y=>nx158, A0=>nx2846, A1=>random_num_input(0)
   );
   ix167 : nor02ii port map ( Y=>nx166, A0=>nx2840, A1=>random_num_input(1)
   );
   ix177 : nor02ii port map ( Y=>nx176, A0=>nx2836, A1=>random_num_input(2)
   );
   ix185 : nor02ii port map ( Y=>nx184, A0=>nx2832, A1=>random_num_input(3)
   );
   ix267 : nor02ii port map ( Y=>nx266, A0=>nx2580, A1=>nx2874);
   ix209 : nor02ii port map ( Y=>nx208, A0=>nx2848, A1=>random_num_input(0)
   );
   ix217 : nor02ii port map ( Y=>nx216, A0=>nx2846, A1=>random_num_input(1)
   );
   ix227 : nor02ii port map ( Y=>nx226, A0=>nx2840, A1=>random_num_input(2)
   );
   ix235 : nor02ii port map ( Y=>nx234, A0=>nx2836, A1=>random_num_input(3)
   );
   ix247 : nor02ii port map ( Y=>nx246, A0=>nx2832, A1=>random_num_input(4)
   );
   ix255 : nor02ii port map ( Y=>nx254, A0=>nx2830, A1=>random_num_input(5)
   );
   ix345 : nor02ii port map ( Y=>nx344, A0=>nx2876, A1=>nx342);
   ix277 : nor02ii port map ( Y=>nx276, A0=>nx2852, A1=>random_num_input(0)
   );
   ix285 : nor02ii port map ( Y=>nx284, A0=>nx2848, A1=>random_num_input(1)
   );
   ix295 : nor02ii port map ( Y=>nx294, A0=>nx2846, A1=>random_num_input(2)
   );
   ix303 : nor02ii port map ( Y=>nx302, A0=>nx2840, A1=>random_num_input(3)
   );
   ix315 : nor02ii port map ( Y=>nx314, A0=>nx2506, A1=>random_num_input(6)
   );
   ix323 : nor02ii port map ( Y=>nx322, A0=>nx2836, A1=>random_num_input(4)
   );
   ix331 : nor02ii port map ( Y=>nx330, A0=>nx2832, A1=>random_num_input(5)
   );
   ix433 : nor02ii port map ( Y=>nx432, A0=>nx2638, A1=>nx2874);
   ix355 : nor02ii port map ( Y=>nx354, A0=>nx2856, A1=>random_num_input(0)
   );
   ix363 : nor02ii port map ( Y=>nx362, A0=>nx2852, A1=>random_num_input(1)
   );
   ix373 : nor02ii port map ( Y=>nx372, A0=>nx2848, A1=>random_num_input(2)
   );
   ix381 : nor02ii port map ( Y=>nx380, A0=>nx2846, A1=>random_num_input(3)
   );
   ix393 : nor02ii port map ( Y=>nx392, A0=>nx2840, A1=>random_num_input(4)
   );
   ix401 : nor02ii port map ( Y=>nx400, A0=>nx2836, A1=>random_num_input(5)
   );
   ix411 : nor02ii port map ( Y=>nx410, A0=>nx2515, A1=>random_num_input(6)
   );
   ix419 : nor02ii port map ( Y=>nx418, A0=>nx2506, A1=>random_num_input(7)
   );
   ix509 : nor02ii port map ( Y=>nx508, A0=>nx2876, A1=>nx506);
   ix441 : nor02ii port map ( Y=>nx440, A0=>nx2856, A1=>random_num_input(1)
   );
   ix449 : nor02ii port map ( Y=>nx448, A0=>nx2852, A1=>random_num_input(2)
   );
   ix459 : nor02ii port map ( Y=>nx458, A0=>nx2848, A1=>random_num_input(3)
   );
   ix467 : nor02ii port map ( Y=>nx466, A0=>nx2846, A1=>random_num_input(4)
   );
   ix479 : nor02ii port map ( Y=>nx478, A0=>nx2515, A1=>random_num_input(7)
   );
   ix487 : nor02ii port map ( Y=>nx486, A0=>nx2840, A1=>random_num_input(5)
   );
   ix495 : nor02ii port map ( Y=>nx494, A0=>nx2528, A1=>random_num_input(6)
   );
   ix575 : nor02ii port map ( Y=>nx574, A0=>nx2700, A1=>ready_1);
   ix517 : nor02ii port map ( Y=>nx516, A0=>nx2856, A1=>random_num_input(2)
   );
   ix525 : nor02ii port map ( Y=>nx524, A0=>nx2852, A1=>random_num_input(3)
   );
   ix535 : nor02ii port map ( Y=>nx534, A0=>nx2848, A1=>random_num_input(4)
   );
   ix543 : nor02ii port map ( Y=>nx542, A0=>nx2846, A1=>random_num_input(5)
   );
   ix555 : nor02ii port map ( Y=>nx554, A0=>nx2545, A1=>random_num_input(6)
   );
   ix563 : nor02ii port map ( Y=>nx562, A0=>nx2528, A1=>random_num_input(7)
   );
   ix631 : nor02ii port map ( Y=>nx630, A0=>nx2826, A1=>nx628);
   ix583 : nor02ii port map ( Y=>nx582, A0=>nx2545, A1=>random_num_input(7)
   );
   ix591 : nor02ii port map ( Y=>nx590, A0=>nx2856, A1=>random_num_input(3)
   );
   ix599 : nor02ii port map ( Y=>nx598, A0=>nx2852, A1=>random_num_input(4)
   );
   ix609 : nor02ii port map ( Y=>nx608, A0=>nx2848, A1=>random_num_input(5)
   );
   ix617 : nor02ii port map ( Y=>nx616, A0=>nx2568, A1=>random_num_input(6)
   );
   ix677 : nor02ii port map ( Y=>nx676, A0=>nx2743, A1=>ready_1);
   ix639 : nor02ii port map ( Y=>nx638, A0=>nx2856, A1=>random_num_input(4)
   );
   ix647 : nor02ii port map ( Y=>nx646, A0=>nx2852, A1=>random_num_input(5)
   );
   ix657 : nor02ii port map ( Y=>nx656, A0=>nx2588, A1=>random_num_input(6)
   );
   ix667 : nor02ii port map ( Y=>nx666, A0=>nx2568, A1=>random_num_input(7)
   );
   ix713 : nor02ii port map ( Y=>nx712, A0=>nx2826, A1=>nx710);
   ix685 : nor02ii port map ( Y=>nx684, A0=>nx2856, A1=>random_num_input(5)
   );
   ix693 : nor02ii port map ( Y=>nx692, A0=>nx2615, A1=>random_num_input(6)
   );
   ix703 : nor02ii port map ( Y=>nx702, A0=>nx2588, A1=>random_num_input(7)
   );
   ix739 : nor02ii port map ( Y=>nx738, A0=>nx2769, A1=>ready_1);
   ix721 : nor02ii port map ( Y=>nx720, A0=>nx2646, A1=>random_num_input(6)
   );
   ix729 : nor02ii port map ( Y=>nx728, A0=>nx2615, A1=>random_num_input(7)
   );
   ix755 : nor02ii port map ( Y=>nx754, A0=>nx2826, A1=>row_7_14);
   ix747 : nor02ii port map ( Y=>nx746, A0=>nx2646, A1=>random_num_input(7)
   );
   ix2813 : or02 port map ( Y=>nx2814, A0=>reset_rows, A1=>ready_1);
   ix2815 : or02 port map ( Y=>nx2816, A0=>reset_rows, A1=>ready_1);
   lat_complete_fsm_u1 : latchs_ni port map ( QB=>nx5, D=>nx2453, CLK=>
      nx2860, S=>nx2810);
   lat_complete_fsm_u2 : inv02 port map ( Y=>complete_EXMPLR, A=>nx5);
   lat_reset_rows_u1 : latchs_ni port map ( QB=>nx2870, D=>nx2453, CLK=>
      complete_EXMPLR, S=>clk);
   lat_reset_rows_u2 : inv02 port map ( Y=>reset_rows, A=>nx2870);
   lat_ready_1_u1 : latchs_ni port map ( QB=>nx2872, D=>nx2453, CLK=>nx2860, 
      S=>nx2860);
   lat_ready_1_u2 : inv02 port map ( Y=>ready_1, A=>nx2872);
   lat_ready_1_u2_rep_1 : inv02 port map ( Y=>nx2874, A=>nx2872);
   ix2875 : inv01 port map ( Y=>nx2876, A=>nx2874);
end galois_expand_fsm ;

